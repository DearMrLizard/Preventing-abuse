This code is to prevent server abuses, especially for the Hetzner data center
In this code, most of the privacy ranges are closed and also the firewall is set to prevent possible abuses in the future.
In the last step, you will be asked for the code of the required ports that are open and used
Be sure to open the connection port to the server (SSH), which is usually port 22
Also open port 80 and http
The rest of the ports should be the ports you use
After this step and typing (exit), the firewall will be activated, so be careful!

این کد برای جلوگیری از ابیوز های سرور بخصوص برای دیتاسنتر هتزنر میباشد 
در این کد اغلب رنج های پرایوت بسته میشود و همچنین فایروال برای جلوگیری از ابیوز های احتمالی در اینده تنظیم میشود 
در مرحله اخر پورت های مورد نیاز شما خواسته میشود که باز هستند و استفاده میشوند 
حتما پورت اتصال به سرور (اس اس اچ) رو باز بذارید که اغلب پورت 22 میباشد 
همچنین پورت 80 و http  رو هم باز بذارید 
باقی پورت های باید پورت های مورد استفاده شما باشد
بعد از این مرحله و تایپ کردن (exit) فایروال فعال خواهد شد پس دقت لازم را به عمل آورید!
<script>
function copyToClipboard(text) {
  var tempInput = document.createElement("input");
  tempInput.value = text;
  document.body.appendChild(tempInput);
  tempInput.select();
  document.execCommand("copy");
  document.body.removeChild(tempInput);
  alert("لینک کپی شد: " + text);
}
</script>
