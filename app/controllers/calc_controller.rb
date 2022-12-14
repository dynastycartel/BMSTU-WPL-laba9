# frozen_string_literal: true

class CalcController < ApplicationController
  def input; end

  def output
    @result, @output_msg = CalcController.get_palindromes(params[:user_input])
  end

  def self.get_palindromes(user_input)
    # Валидация введенных данных
    begin
      user_input = Integer(user_input)
    rescue StandardError
      @result = 'Вы ввели недопустимое значение. Пожалуйста, введите целое число.'
      return @result
    end
    if (user_input < 1) || (user_input > 1_000_000)
      @result = 'Вы ввели значение, находящееся за требуемыми пределами. Пожалуйста, введите число от 1 до 1.000.000'
      return @result
    end

    # Сам алгоритм
    palindromes = {}
    (1..user_input).each do |i|
      b_i = i.to_s(2).to_i
      palindromes[i.to_s] = b_i.to_s if i.to_s.reverse.to_i == i && b_i.to_s.reverse.to_i == b_i
    end
    @result = palindromes
    @output_msg = "Ниже представлены все числа-палиндромы в промежутке от 1 до #{user_input}"

    [@result, @output_msg]
  end
end
