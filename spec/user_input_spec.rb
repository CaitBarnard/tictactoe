require "user_input"

describe UserInput do

    xit "recieves single integer input from keyboard" do
        user = UserInput.new
        expect(user.execute).to eq(1)
        expect(user.execute).to eq(2)
    end

   xit "rejects integers above 9" do
        user = UserInput.new
        expect(user.execute).not_to eq(10)
    end

    xit "rejects non integers" do
        user = UserInput.new
        expect(user.execute).not_to eq("j")
    end
end