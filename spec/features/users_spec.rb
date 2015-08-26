require 'rails_helper'

describe 'Users' do
  let(:base64_1) { 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB0AAAAWCAYAAAA8VJfMAAAD40lEQVRIS8WWe0zVZRjHPy+cm4dLHZAdEAYYggOt5rByhpuYFyQ3L+GAMHKay5EVi+lqTGAoLKhkkGhDcuIysCARcCDesGwzrJlzrUlIDmnnZFPPOdzOjfO2wxCzwH+49Pzz237b+3z2vM/v99lXWOvrJCPlAfQqVWiWLkOr1T54PelPYSN8FCpwYY17Co+WJry8vCYd9qChMKSkjkJxOiFqDk/uzkGj0Uwd1GixjEKlBLVCgU47Y8qA7sZCSjdqeuv/gZpMJunr64sQYtrGFZ2dnVKhUBASEoKnp+e0gEV3d7e0WCwEBATg7+8/aWDpcmGz21GpNXj86xKF0WiUVqsVPz8/+vr60Ov1eHi4NTGxMnX8QEZmMVmVVcTO8n6kmbg7OCh7enq41dWFa2CAyMhIYmJiJrzjvpuX2Zj8Prm1jSwK93kUOlhQLB02G9bgIEzxS7APuZgdGjquBq+fbeJYUysW+xA+M4PYtGUbT4frASenq49y6lI7Qq1jfthMao43U/R1I3PFbWobzqPTOWm+eA1xgyAZkhiHdskimKXnr4QVaL298RrDvcZfzpOwYTtLktJZGBVMwxcVsCCJuuIs2o7sY3vRYV55fQvhPnbqvzzObbuOqoYWwv78lpWr0lG9lMjGxFiE8fnlUr/wWVAocPxhoDc3C3XUXLzU6v8s9c6NK7R+38PalDVIp5mKvTu5NDCHb0reIWPdMhSL32Z/dvrwuavNh0nfXcXRxjPD0OQ3Csirb+TFEG9ER/ACGRkXizTdp/+1JByJCajUqjEnddw1cKS8nO86uzD33uO+sZvAxVs5tieN9NUJLH+3mq0booehfb/9SOqmXeTWtxBuaGNH9gE+OXmCYJVAyPXp0mazYX51Hbq0FPpNJlQq1Zg7rSvLpqj2GmWflRIbHcHFQ7uo/FVHTfEONq+NZ9b6PAq3rRmG3mqvJ+mtEioazhBqaCPjg3I+PllPqEYg7rycJG1pSQSmJuMpJWazeVxo1UfvUVr7O2Xle5Dmm+Rk52B54jnqakq4ejCfzOrL5BQVsNDfwcHCXVy4paWm+RwhxvO8ufNTSk41EeaGdp1ulWErV7jNP/ybmExuqHLMSU0dP5ObX8B1wz1mBASz9IV5nG08R8qOPDavnsehfR/y1YUrCDQ8Mz+afkcvmXv3E2hop7CshqzSUvRq9/VKKV0jn4xbHGaLBZVC8djkYLNaUWo0uBXidNgRnko8R7TjtNtxCQ9USsW4dhEDKckP44pjiP7ZoWjy8tFOZXJwEPGPjORiMH4ONJ6Y2rjy0+eVD5PDkAuvwCAiElahVConJt/HnP4bAYR4zg4ichUAAAAASUVORK5CYII=' }
  let(:base64_2) { 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAASCAYAAABM8m7ZAAADt0lEQVRIS82Vb0yVdRTHP89zH+5fwLiRhIiooNeGoyKrYYmYWixTXkRqtWLDrVXO5p1u1cpR5ipLjTe5hqutUljrTa8yXK2ZDUmRmqxscRVDUEjlyuVy7+Xe50/7/eBewlvLF648r57nOed3vuec53u+P6WiosLifzDlhgC2LDAtC5uqYJgWpjn+rKpK2kyET8QoiiJjlKtCxBgNw8KyLITLZlOnxKQ6FqAep0amO4M/glHyc93ckuPg7PkwwVAcm208s4gzTJM8r4uCPA+jEZ0z/SPohikLECaLVxRmz8zGm2VnNJrg9wthIjFDgouwFHAiYfLg4pmsXVFMxy8XKb8tF+80J+HRBG/sO0HP+RFUm4IK1K4spqayiHA0gdul0d07TGNzF8MjcUAhy6Phf7KMBUU3cSUcJ9OlMXA5ymtNHURiOm6HNgkcT5isWlLItg2LaGnt5sDBAFkeOztfuJcfugbYtf8kqqLw8P2FbKxdyM6Pf6Lj1EW82U4aninnt95hdn96Et20qH1gDnVrfGzZc5SBSxE8bo3Z+Vn8fCZIbMxAVf/ScRLY/3gZ9dsP0zsQlmN9se4OCqa72NrYLv/1+y8tYXAowgefn8JhVxHnli6awWPL51L/+rcMDsXYUONj3cpiNr3zvZxUXBdcAKfdluJKatQiwerKWdQ94uO5t44QDI1J8mxcW0ppcQ7+XW24HBofNVSRMCyCodg46SxS5Nvx4Y/09IcozMuUU5juddPTP0xXIMjXx/o4NzCa4koa8NOrfDz/djrw5gngT7Yv44vDZ2k5GJAdJEVAECoeNyWxRMGCqGXzb+b2eV6q7ipANwy2vNfO4FB0fAuSe5zs+J+A/buPyvVq3LpYHt629zgZmlgRBcMwZdfiXZgA1nVTFpXQTUrn5ND0aiUNTSc40nkBe4Y6FXjNUjHqBTz75nepUW9at5DSkhw2v9tGdMygsjyfl+vvpPnLbr453oeqqNJ/q9fNZ4dOMxY3qL6vEM2m0PnrZeIJneqKWayvLsG/p41Ab0j6JtdJN1lxTwGPLp/LK3uPydUQHT612sf8omx2NHWiTwjCsrtn8ET1PNwOG4qqyK5a287R0npaPtdUFbH+oRK5ryKHONf8VYBD7X2pXZ8imWJdBNVFYNLECAUjhQolTSR3OmzkTnPJ+KFQTIpDUkDENjjtqtQBcf7SlZgUGk2blLc0rRbprxbIv/02Ia+iGFFwmmT+i//GuCT+y9vxundsmuY11X9dgcUVGI1Grwn4T5Bt0wg8wYurAAAAAElFTkSuQmCC' }

  it "creates a file from a base64 string" do
    visit new_user_path

    fill_in 'user_string_upload', with: base64_1

    click_button 'Create User'
    expect(page).to have_content 'User was successfully created.'

    expect(file_to_base64(User.last.string_upload.file.file)).to eq base64_1
  end

  it "updates a file from a base64 string" do
    user = User.create! string_upload: base64_1

    visit edit_user_path(user)

    fill_in 'user_string_upload', with: base64_2

    click_button 'Update User'
    expect(page).to have_content 'User was successfully updated.'
    user.reload

    expect(file_to_base64(user.string_upload.file.file)).to eq base64_2
  end

  describe 'nested attachments' do
    it "creates a file from a base64 string" do
      user = User.create! string_upload: base64_1

      visit edit_user_path(user)

      fill_in 'user_attachments_attributes_0_string_upload', with: base64_1

      click_button 'Update User'
      expect(page).to have_content 'User was successfully updated.'
      user.reload

      expect(file_to_base64(user.attachments.last.string_upload.file.file)).to eq base64_1
    end

    it "updates a file from a base64 string" do
      pending "This doesn't work in the normal browser!"
      user = User.create! attachments_attributes: [{string_upload: base64_1}]

      visit edit_user_path(user)

      fill_in 'user_attachments_attributes_0_string_upload', with: base64_2

      click_button 'Update User'
      expect(page).to have_content 'User was successfully updated.'
      user.reload

      expect(file_to_base64(user.attachments.last.string_upload.file.file)).to eq base64_2
    end
  end

  def file_to_base64(path)
    "data:image/png;base64,#{Base64.strict_encode64(File.open(path).read)}"
  end
  
  # it 'grants permission to edit a boilerplate copy' do
  #   visit edit_project_boilerplate_copy_path(@boilerplate_copy.project, @boilerplate_copy)
  #
  #   fill_in 'boilerplate_title',     with: 'A new boilerplate'
  #   fill_in 'boilerplate_intro',     with: 'Some nice introduction'
  #   fill_in 'boilerplate_outro',     with: 'A few words afterwards'
  #   fill_in 'boilerplate_resources', with: 'Resources, resources, resources...'
  #
  #   select 'Success criterion test heading number Success criterion test name - A: Topic test title',
  #                                    from: 'boilerplate_topic_id'
  #
  #   fill_in 'boilerplate_tags',            with: 'A tag, another tag'
  #   fill_in 'boilerplate_how_to_evaluate', with: 'Instructions on how to test'
  #   select  'Completed',                   from: 'boilerplate_status'
  #   select  'Low',                         from: 'boilerplate_priority'
  #
  #   expect {
  #     click_button 'Update Boilerplate'
  #     @boilerplate_copy.reload
  #   } .to  change { @boilerplate_copy.title }.to('A new boilerplate')
  #     .and change { @boilerplate_copy.intro }.to('Some nice introduction')
  #     .and change { @boilerplate_copy.outro }.to('A few words afterwards')
  #     .and change { @boilerplate_copy.resources }.to('Resources, resources, resources...')
  #     .and change { @boilerplate_copy.topic }.to(@topic)
  #     .and change { @boilerplate_copy.tags }.to('A tag, another tag')
  #     .and change { @boilerplate_copy.how_to_evaluate }.to('Instructions on how to test')
  #     .and change { @boilerplate_copy.status }.to('completed')
  #     .and change { @boilerplate_copy.priority }.to('low')
  # end
end
