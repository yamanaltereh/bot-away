require 'spec_helper'

describe BotAway::ParamParser do
  def params(honeypots)
    @params = { 'authenticity_token' => '1234',
                'bdf3e1964ac3a82c5f1c7385ed0100e4' => 'colin',
                'ed8fc4fe67d66bc7aeaf0b4817bd1311' => [1, 2]
           }.merge(honeypots).with_indifferent_access
  end

  before do
    # Root level is encoded with 208.77.188.166/test/1234
    #    which resolves to a spinner digest of 86ba3fd99e851587a849ad9ed9817f9b
    @ip = '208.77.188.166'
    params('test' => { 'name' => '', 'posts' => [] })
  end

  subject { BotAway::ParamParser.new(@ip, @params) }
  
  it "should default BotAway.dump_params => false" do
    (!!BotAway.dump_params).should == false
  end
  
  context "with dump_params == true" do
    before { BotAway.dump_params = true  }
    after  { BotAway.dump_params = false }

    it "should dump params as debug to Rails logger" do
      @params = { 'test' => "hello", :posts => [1] }
      Rails.logger.should_receive(:debug).exactly(3).times #with(@params.inspect)
      subject
    end
  end

  context "with blank honeypots" do
    it "drops obfuscated params" do
      subject.params.keys.should_not include('bdf3e1964ac3a82c5f1c7385ed0100e4')
    end

    it "drops obfuscated subparams" do
      subject.params.keys.should_not include('ed8fc4fe67d66bc7aeaf0b4817bd1311')
    end

    it "replaces honeypots" do
      subject.params[:test].should_not be_blank
    end

    it "replaces subhoneypots" do
      subject.params.keys.should include('test')
      subject.params[:test][:name].should == 'colin'
      subject.params[:test][:posts].should == [1,2]
    end
  end

  context "with a filled honeypot" do
    before { params({'test' => {'name' => 'colin', 'posts' => []}}) }
    subject { BotAway::ParamParser.new(@ip, @params) }

    it "drops all parameters" do
      subject.params.should == { "suspected_bot" => true }
    end
  end

  context "with a filled sub-honeypot" do
    before { params({'test' => {'name' => '', 'posts' => [1, 2]}}) }
    subject { BotAway::ParamParser.new(@ip, @params) }

    it "drops all parameters" do
      subject.params.should == { "suspected_bot" => true }
    end
  end
end
