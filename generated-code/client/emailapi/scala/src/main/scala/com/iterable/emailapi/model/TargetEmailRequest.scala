package com.iterable.emailapi.model

case class TargetEmailRequest (
  campaignId: Long,
  inlineCss: Boolean,
  recipientEmail: String)

