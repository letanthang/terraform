provider "google" {
    credentials = file("./phrasal-client-312207-6d9277c6e983.json")
    project = "phrasal-client-312207"
    region = "asia-southeast1"
    # version = "~> 2.5.0"
}