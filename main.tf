provider "google" {
  credentials = file("{
  "type": "service_account",
  "project_id": "mystic-primacy-407507",
  "private_key_id": "ea1516da8f4d34c8a14bf8e484bcd4170f4a084e",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCwNK98ZF/FOG4m\nn5eror1+yPuOfeviZCzBbK4kHZGZFMB/SS6ubzSyEc/q76cLFakMWbxvQyV+rDn8\nGPr/78+nPFvBwwY4MTMBp6uq3DWMLEW2BAK9i94YmfM0pSMQCXAmdZLASfkABxT5\nfChK6kShK+Sbk8RghfcOIyjCtdvgbfeI9wZP+77JMXg3LJhlqDgvdwf3s4ADua7h\n4BtmxTexaRvlgahB3rOLKEUCs9KTyPOegF9b3tc0AD6z/Ywx1ZUYXQgLhKAxDldp\nb3qAliwAiGoWED6puvHfsY+eDauWF1NY6G1SkQXJXzCD0PefbMAj7+V5ODLL4scd\nwsUOJVKFAgMBAAECggEABOBVtus5h0YKLlbI+2lT4IKutivKmlz2rB0A2LkEwtLD\nMlfpIHoCtabZNSw6rYuE6SBBSbxMTlbKfVfc97ZAQzrgDdsC0g1H1xTieFEDHlpJ\n95aMKN4KYG3qQBu4flofLhafirjBWPyD2mpS3HfikanwTVSSi6/0Eq0Vv1sJtwqS\n8hHBuTqp5DZdF1uuY44fxnXXS0L1dRhscErQwPKWI2JHkUahVL37TEoPmRKXynjZ\n8G7Rbvcfr3lvke8ap+HBh0CmbLaZI9Xb9AbckhleFWdKznuRQyAmOJ0iB/2gzPYD\n+S/9rzq2isyCeFk2a6NysaX65qf+N3f73JSVWabf4QKBgQDUmR07nrXA1lT75PVz\nJ2ec044+1JM0xnX62jaZTl0FyWjQE+y6W4XtgP9eEiuXx1+6+ccAmLpVCfpcrEsl\nkrtXxe9x7uZdJDnyG9RS2lkuN7EhXikcU9AC3td9SKvSqJeSKky6oTmXqW2Imlye\nmbBqkfJeuXcl4CslENyeEhKauQKBgQDULZ9ienPNRO2FoRqHEvzm7uaz/0kIL2bG\nOz2FhDKv0RNnyDzoJ3eV9pVSVhYm+y6uCmMBQdEvUYcrqI90FG8/lEXr7VRd5tAw\n58TBypHYFSZ8pYAhWAYgcH+9A5wsB38m+FE8VJi4lHrdASpe1KJEwn9+2VE66u+r\nkaiq4VEgLQKBgH+kfnyxSYbCKLwkN4ov+nGaQylOECP7lBJMucNJ3WgACUIE9Hjf\nQoXakXg1iJ7UQZHNLcIZ8KXmG79QYr3oXzrPyHera/w4J+JI+y3Tkv/AyES0eBJd\n7+IJUXATFbahKn/DjdXvvthkDTObGkjPFbCmd9KPoA3JjZ3vhcYSK8FhAoGBAJnV\nqiWgWq2NOBkWwUEFx084DxSaFr1UgNNgyC4xtv46PDOWvnIji1SzP3g+6jjBDQsq\nhLW4no4MMlC5Gakz16TlP/zaSbz7SB7tK37F/BAK5aih5dBHHcoPRs4n++cAWHRM\nvblcLI5HOP1bhvjSegQYcI/ryDVLeRGPvhaG3mbRAoGAQbNXt5DckCovnSws66qp\nvR7zwDHAa9IuDnr7j3tL3YFFP6Om45y6IE2wx3xObdqckaT3l58Nuhu8pltyBA8S\nlFYn6DD7LfjqRHktROlVBevr6YGwgVQKPC+vd96p/QxgGhYIF80lUlVAfGm8EjMd\nNOm1tS48oTBpcSB1oUfutjk=\n-----END PRIVATE KEY-----\n",
  "client_email": "allow-jenkins@mystic-primacy-407507.iam.gserviceaccount.com",
  "client_id": "109847384100302767060",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/allow-jenkins%40mystic-primacy-407507.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"}.json")
  project     = "<mystic-primacy-407507>"
  region      = "us-central1"
}

resource "google_compute_instance" "default" {
  name         = "terraform-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}

