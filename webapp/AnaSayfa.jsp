
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menü</title>
<link rel="stylesheet" href="AnaSayfa.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
</head>
<body>
<body>
	<div class="cevreleyici">
		<div class="siteustu">

			<div>
				<img src="cybersoft.png">
			</div>

			<div class="baslik">
				<h2>Demirbaş Uygulaması</h2>
			</div>
			<div class="logout">
				<i class="fa-solid fa-right-from-bracket"></i> <a href="login.jsp"></a>
			</div>

		</div>

	</div>


	<div class="sitesolu">
		<div class="navigation_bar">
			<ul>
				<li><a onclick="changePanel('kullanicilar')" href="#" target="_parent">Kullanıcılar</a></li>
				
				<li><a onclick="changePanel('yonetici')" href="#">Yönetici</a></li>
				
				<li><a onclick="changePanel('lokasyonlar')" href="#" target="_parent">Lokasyonlar</a></li>
				
				<li><a onclick="changePanel('tipler')" href="#" target="_parent">Tipler</a></li>
				
				<li><a onclick="changePanel('markalar')" href="#" target="_parent">Markalar</a></li>
				
				<li><a onclick="changePanel('demirbaslar')" href="#" target="_parent">Demirbaslar</a></li>
				
				<li><a onclick="changePanel('personeller')" href="#" target="_parent">Personeller</a></li>
				
				<li><a onclick="changePanel('demirbasislemleri')" href="#" target="_parent">Demirbas İşlemleri</a></li>
				
				<li><a onclick="changePanel('zimmetislemleri')" href="#" target=_parent>Zimmet İşlemleri</a></li>
				
				<li><a onclick="changePanel('raporlar')" href="#" target="_parent">Raporlar</a></li>
			</ul>




		</div>
	</div>
	<div class="content-area">
		<div class="content-inner show" id="kullanicilar">
			<form>
				<h1>Kullanıcı Yönetimi</h1>
				<fieldset>
					<legend>Kullanıcı Bilgileri</legend>
					<table width="350">
						<tr>
							<td>ID</td>
							<td><input type="text" id="gid" name="gid"
								placeholder="Kullanıcı-ID" required></td>
						</tr>
						<tr>
							<td>Adı</td>
							<td><input type="text" id="kullanici_adi"
								name="kullanici_adi" required></td>
						</tr>
						<tr>
							<td>Soyadı</td>
							<td><input type="text" id="kullanici_soyadi"
								name="kullanici_soyadi" required></td>
						</tr>
						<tr>
							<td>Mail Adresi</td>
							<td><input type="email" id="eposta" name="eposta" required></td>
						</tr>
						<tr>
							<td>Parola</td>
							<td><input type="password" /></td>
						</tr>
						<tr>
							<td>Kullanıcı Adı</td>
							<td><input type="text" /></td>
						</tr>
						<tr>
							<td>Tarih</td>
							<td><input type="date" name="tarih" id="tarih"
								value="2000-00-00"></td>
						</tr>
						<tr>
							<td>Oluşturan Kullanıcı</td>
							<td><input type="text" id="creator_adi" name="creator_adi"
								placeholder="Oluşturan kullanıcı adı" required></td>
						</tr>

					</table>
				</fieldset>




				<fieldset>
					<legend>Yetkili Bilgileri</legend>
					<table width="350">
						<tr>
							<td>ID</td>
							<td><input type="text" id="gid" name="gid"
								placeholder="Yetkili-ID" required></td>
						</tr>
						<tr>
							<td>Menü Adı</td>
							<td><input type="text" id="menü_adi" name="menü_adi"
								required></td>
						</tr>

					</table>
				</fieldset>


				<fieldset>
					<input type="submit" value="Kayıt">
				</fieldset>
			</form>
		</div>
		
		<div class="content-inner show" id="yonetici">yönetici</div>
		
		<div class="content-inner show" id="lokasyonlar">Lokasyonlar</div>


		<div class="content-inner show" id="tipler">
			<form>
				<h1>Demirbaş Tipi Yönetimi</h1>
				<fieldset>
					<legend>Bilgi Kartı</legend>
					<table width="350">
						<tr>
							<td>ID</td>
							<td><input type="text" id="gid" name="gid"
								placeholder="ID girin" required></td>
						</tr>
						<tr>
							<td>Demirbaş Tipi Yönetimi Adı</td>
							<td><input type="text" id="ad" name="ad" required></td>
						</tr>
					</table>
				</fieldset>

				<fieldset>
					<input type="submit" value="Kayıt">
				</fieldset>
			</form>
		</div>
		
		<div class="content-inner" id="markalar"></div>
		
		<div class="content-inner" id="demirbaslar">
		<form>
        <h1>Demirbaş Yönetimi</h1>

        <fieldset>
            <legend>Demirbaş Kayıt</legend>
            <table width="350">
                <tr>
                    <td>Demirbaş ID</td>
                    <td><input type="text" id="ad" name="ad" placeholder="Demirbaşın ID girin" required></td>
                <tr>
                    <td>Demirbaş Adı</td>
                    <td><input type="text" id="ad" name="ad" placeholder="Demirbaşın adını girin" required></td>
                </tr>
                <tr>
                    <td>Marka ID</td>
                    <td><input type="text" id="marka" name="marka" required></td>
                </tr>
                <tr>
                    <td>Model</td>
                    <td><input type="text" id="model" name="model"></td>
                </tr>
                <tr>
                    <td>Demirbaş Tipi</td>
                    <td><input type="text" id="tipi" name="tipi" required></td>
                </tr>
            </table>
        </fieldset>






        <fieldset>
            <legend>Diğer Bilgiler</legend>
            <table width="350">
                <tr>
                    <td>Alış Tarihi</td>
                    <td>
                        <input type="date" name="tarih" id="tarih" value="2000-00-00">
                    </td>
                </tr>
                <tr>
                    <td>Bağlı Olduğu Demirbaş</td>
                    <td><input type="text" id="baglantı" name="baglantı"></td>
                </tr>
                <tr>
                    <td>İmha Kaydı</td>
                    <td><input type="text" id="imha" name="imha"></td>
                </tr>
                <tr>
                    <td>Etiket</td>
                    <td><input type="text" id="etiket" name="etiket"></td>
                </tr>
                <tr>
                    <td>Acil Durum Etiketi</td>
                    <td><input type="text" id="acil" name="acil"></td>
                </tr>
                <tr>
                    <td>Satın Alan</td>
                    <td><input type="text" id="alıcı" name="alıcı"></td>
                </tr>

                <tr>
                    <td>Lokasyon</td>
                    <td>
                        <select name="sehir">
                            <option>İstanbul</option>
                            <option>Ankara</option>
                            <option>İzmir</option>
                            <option>Antalya</option>
                        </select>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <tr>
                <legend>Açıklama</legend>
                <td><input type="text" id="aciklama" name="aciklama" required></td>
            </tr>
            <tr>
                <legend>Özellik</legend>
                <td><input type="text" id="ozellik" name="ozellik" required></td>
            </tr>
        </fieldset>
        <fieldset>
            <input type="submit" value="Kayıt">
        </fieldset>
    </form></div>
		
		<div class="content-inner" id="personeller">
		<form>
        <h1>Personel Yönetimi</h1>
        <fieldset>
            <legend>Personel Bilgiler</legend>
            <table width="350">
                <tr>
                    <td>ID</td>
                    <td><input type="text" id="gid" name="gid" placeholder="Personel-ID" required></td>
                </tr>
                <tr>
                    <td>Adı</td>
                    <td><input type="text" id="ad" name="ad" placeholder="Personel Adı" required></td>
                </tr>
                <tr>
                    <td>Soyadı</td>
                    <td><input type="text" id="soyad" placeholder="Personel Soyadı" name="soyad" required></td>
                </tr>
                <tr>
                    <td>Personel Sicil NO</td>
                    <td><input type="number" min="20" max="100" id="yas" name="yas"></td>
                </tr>
                <tr>
                    <td>Proje</td>
                    <td><input type="text" id="proje" name="proje" required></td>
                </tr>

            </table>
        </fieldset>

        <fieldset>
            <input type="submit" value="Kayıt">
        </fieldset>
    </form></div>
		
		<div class="content-inner show" id="demirbasislemleri">    
		<form>
        <h1>Demirbaş İşlemleri</h1>
        <fieldset>
            <legend>İşlemler</legend>
            <table width="350">
                <tr>
                    <td>ID</td>
                    <td><input type="text" id="gid" name="gid" placeholder="ID girin" required></td>
                </tr>
                <tr>
                    <td>Açıklama</td>
                    <td><input type="text" id="aciklama" name="aciklama" required></td>
                </tr>
                <tr>
                    <td>Demirbaş-ID</td>
                    <td><input type="text" id="demirbas_id" name="demirbas_id" required></td>
                </tr>
                <tr>
                    <td>Aksiyon Numarası</td>
                    <td><input type="number" id="action" name="action"></td>
                </tr>
            </table>
        </fieldset>

        <fieldset>
            <input type="submit" value="Kayıt">
        </fieldset>
    </form></div>
		
		<div class="content-inner show" id="zimmetislemleri">
			<form>
				<h1>Zimmet ve Düşüm</h1>
				<fieldset>
					<legend>Durum Kartı</legend>
					<table width="350">
						<tr>
							<td>ID</td>
							<td><input type="text" id="gid" name="gid"
								placeholder="ID girin" required></td>
						</tr>
						<tr>
							<td>Demirbaş-ID</td>
							<td><input type="text" id="demirbas_id" name="demirbas_id"
								required></td>
						</tr>
						<tr>
							<td>Personel-ID</td>
							<td><input type="text" id="personel_id" name="personel_id"
								required></td>
						</tr>
						<tr>
							<td>DURUM</td>
							<td><label><input type="radio" name="durum">Düşmüş</label><br>
								<label><input type="radio" name="durum">Zimmet</label><br>
							</td>
						</tr>

					</table>
				</fieldset>

				<fieldset>
					<input type="submit" value="Kayıt">
				</fieldset>
			</form>
		</div>
		
		<div class="content-inner" id="raporlar">raporlar</div>
	</div>


	<div class="sitealti"></div>





	<script>
		function changePanel(contentId) {
			var nextPanel = document.getElementById(contentId);
			var currentPanel = document.querySelectorAll(".content-inner.show");
			for (let index = 0; index < currentPanel.length; index++) {
				const element = currentPanel[index];
				element.classList.remove("show");

			}
			nextPanel.classList.add("show");
		}
	</script>
</body>
</body>

</html>