json.extract! report, :id, :reportname, :description, :period, :platform, :created_at, :updated_at
json.url report_url(report, format: :json)