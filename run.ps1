Write-Host "Starting Backend API..." -ForegroundColor Green
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'PaymentAPI\PaymentAPI'; dotnet run"

Write-Host "Starting Frontend App..." -ForegroundColor Cyan
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'PaymentApp'; npm start"
