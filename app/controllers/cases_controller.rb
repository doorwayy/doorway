class CasesController < ApiController

  def open
    render json: {case_number: '#c45645',subject: 'Assisted Housing',start_date: (Time.current - 20*24)}
  end
end
