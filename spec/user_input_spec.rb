require "user_input"

describe UserInput do

    it "recieves single integer input from keyboard" do
        user = UserInput.new
        expect(user.execute).to eq(1)
        expect(user.execute).to eq(2)

    end

   it "rejects integers above 9" do
        user = UserInput.new
        expect(user.execute).not_to eq(10)
    end

    it "rejects non integers" do
        user = UserInput.new
        expect(user.execute).not_to eq("j")
    end
end