json.extract! source_report, :id, :reportname, :description, :year, :created_at, :updated_at
json.url source_report_url(source_report, format: :json)