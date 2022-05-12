class SecretClient
  def applications
    @token ||= OAuthClient.generate_token
  end

  def applications_in_validity_cache
    return @token if Time.now - @token_cached_at.to_i < 30.minutes

    @token = OAuthClient.generate_token
    @token_cached_at = Time.now
  end
end
