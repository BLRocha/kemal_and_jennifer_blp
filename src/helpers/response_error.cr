RESPONSE_STATUS_CODE = {
  400 => %{{
    "status": 400,
    "title": "Bad Request"
  }},
  401 => %{{
    "status": 401,
    "title": "Unauthorized"
  }},
  404 => %{{
    "status": 404,
    "title": "Not Found"
  }},
  405 => %{{
    "status": 405,
    "title": "Method Not Allowed"
  }},
  406 => %{{
    "status": 406,
    "title": "Not Acceptable"
  }},
  500 => %{{
    "status": 500,
    "title": "Internal Server Error"
  }},
  503 => %{{
    "status": 503,
    "title": "Service Unavailable"
  }}
}

RESPONSE_STATUS_CODE.keys.each do |key|
  error key do |ctx|
    ctx.response.content_type = "application/json"
    RESPONSE_STATUS_CODE[key]
  end
end

