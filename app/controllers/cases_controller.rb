class CasesController < ApiController
  CASE_NUMBER_PREFIXES= [
    '#c',
    '#B',
    '#D',
    '#d',
    '#e',
    '#E',
    '#B',
    '#c',
    '#d',
    '#d',
    '#g',
    '#G',
    '#T',
  ]
  SUBJECTS= [
    'Assisted Housing',
  ]

  def open
    render json: {open_cases_array: [{case_number: case_number, subject: SUBJECTS.sample, start_date: start_date},{case_number: case_number, subject: SUBJECTS.sample, start_date: start_date}]}
  end

private

  def case_number#; def self.case_number; @case_number end
    @case_number= CASE_NUMBER_PREFIXES.sample+ rand(10000..99999).to_s
  end

  def start_date#; def self.start_date; @start_date end
    @start_date= (Time.current - rand(0..99)*24*60*60).strftime '%m/%d/%y'
  end
end
