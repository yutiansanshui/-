<?php
$config = array (	
		//应用ID,您的APPID。
		'app_id' => "2016091000479921",

		//商户私钥
		'merchant_private_key' => "MIIEowIBAAKCAQEAtF7E1icTDeRWhU6HHsGe6SG9Cef+4ehUVUyHK5zAKGVRYbnQYRP8aaiLpRWF67KIJAZB+T9GydXK9UvvQco9I/j6v6JuvQl9PJCmkBBjpsJeUOs0eYBILREImW5ITG+ZdplRlw9qxVAciyu0qMB+MwaZZ1TDQa3GK+krZ4OtPrim6lfwcG7u1+yBWqdPrLsVUWmj5No1ZgyeR5GDLs2FLzxL3ZM//mZDssyaICWroa1DrpYOqe8PcSwovptbtdqunt7y8+ho4P4QPNA6hT/Av9wkBn7ZVsJytx/9zfsWGcPuiABc573DQbhU3reRdQ2WnokCVDOmnkAkzibElvlXVwIDAQABAoIBABHHdaeWWm54H38sam1BsKRSSwv67kjeWdG+pWRLIzXYJtl3M28eRTc1Ae7X3EeLZZgHdeFXt2aVyFe9kGvvv28YT78sB7ZihRG/QGva8beyWRGo3ZdMadDnaO2WzVGbfokOO9ikEGY6q1WcjUZFEyt8bwqcdFK5CluxtDGT7TPNXWm93KoVm2tlkQ3FT2/lNPozxhspBqQgvm1vMXrObJWNLRt3pjKdD4z/VQ1i4BpW/QcL3Ez9wKAGZShP227BpXzPkZ8WIOBUSzv5ziOq6sXF+UvkOuzt3MWXaRN5QepBU/+EwD1UJPQL2wJrofU/jPsIA83CsecOXJOlUiFXB2ECgYEA1z6RpUDRLlkeRoOLimhOKJPhn/5frjJFGMGdae8JAq2zmpaZF6j0e73wkzXN6QBuUetZpSiS9tSr3iYXsetpIUH1jonVnR0Ih9sPHg5v5gax5E7aNeoFKTwEu0V2QwRrfCHMIN6vm1q/st6CfZmqDbuhI74gg+2x74yrRXYV6AUCgYEA1oXCjXJrSO+g4IN6WwPigezlr0vNrTMrcU5AOnUwzIhwVaF1algrKBfG3QoMaDqQmqhpdLneLAnBjWGg1wWvXOs3IE6AfTQj/p9gBE/GkFpYGKYlZgivlmG8rgzJFsnDq+f/TOn4qoKZj9cMKn1Ui8u5J26qDdreRalkcRLkrKsCgYAdJtA6/WhXSqKbEj3X5QCQ5lZsgNsckJpjG/Xh3wntXvEwQq1BUxSpnbPzfBoDMJfAaIufnrsoyuzsDWSwKB347yH+yBQyTzhUjgqiG3p0QPve2/8ZxjQkvYg2hNXbhcG48irfWMmX1NaZtyEdOa6aZYsReDKXK54pv3eC1NdqsQKBgQCo464Dxi0Iwv+ZQmm19h0BxQwfMkK/NSXikoSmgVTl8hTelbrm+nsfmXiK1TpnZJQr7qL3rs1nRlcHg/Eo1+Tz9orz+FnYOJCOCdOCEXx2cWoiHcwbxILYliIBtTcrpbVTRdcNKrcHJsLXJ6sAWKOTW9RtYwam2cVcerwE+abm+QKBgElfzdfCJLhLe4a44f3YzSuiPxZaNMKa0YhFF3R6A3FsQ8mJtW7JltHhG2kCK8j39q3u88t5BWikqk5/yiSRV7BP9bSeLCPND/TddTuAeJSm0dx5PcLd7b2fl22YluocekslCdL/y49kD8BMeULy4+YkmoK4ocKXSLACcJc0PZR3",
		
		//异步通知地址
		'notify_url' => "http://www.tpshop.com/home/order/notify",
		
		//同步跳转
		'return_url' => "http://www.tpshop.com/home/order/callback",

		//编码格式
		'charset' => "UTF-8",

		//签名方式
		'sign_type'=>"RSA2",

		//支付宝网关
		'gatewayUrl' => "https://openapi.alipaydev.com/gateway.do",

		//支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
		'alipay_public_key' => "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzJ8L6mG0l8VddLtuGG1sX7vLJyvXKmmE4p6k2oGcUjmPBJMstnTkgSd/qnFF6lx1I8aUmeMo9+S4yYtooVTVexswk2nNTKc3HaXkvb1ftx8PyljJ4HvQI6qACMnrFMuoFY5tqc0WInbKWL2Ueszi5Fvzj76VOMbXu+F+oyG7pd+8PFXX5G07gOqobq23rC6BzAn5Y+e+YYjz0nMrI5VmpklSaoRtpRDR27ZhV9gbIUZ4Zi2sKzJlK6aRJalLSj8ELCrXaSAAkzt15T1zcsKPDQ+94gG83flxLamwk9EoKum6ELbd6xA7NxfeGVyOs0IzDrLGh50kW0ddiI/Fyq2G7QIDAQAB",
);