require 'rails_helper'

RSpec.describe 'Content', type: :system do
	scenario 'valid input' do
		visit home_path
		fill_in :num, with: '123'

		find('#btn').click

		expect(find("#counter")).to have_text('7')
	end

	scenario 'invalid input' do
		visit home_path
		fill_in :num, with: '-1'
		find('#btn').click
		expect(find('#result-msg')).to have_text('Вы ввели значение, находящееся за требуемыми пределами. Пожалуйста, введите число от 1 до 1.000.000')
	end
end