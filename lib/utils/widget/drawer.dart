import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    // imageUrl =
    //   "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVEhUSGBgSGBIYGBgYEhESERESGBQZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTQBDAwMEA8QHhISHjQkISE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQACAwEGB//EADsQAAIBAwEFBQYFAwQCAwAAAAECAAMEESEFEjFBUSJhcYGRBhOhsdHwFDJCUsFicuEjgpLxk6IHU2P/xAAaAQADAQEBAQAAAAAAAAAAAAABAgMABAUG/8QAJhEAAgICAgEEAwADAAAAAAAAAAECEQMhEjEEEyJBUTJhcRSBsf/aAAwDAQACEQMRAD8A+m7KflG4ia2XBzG1Nsic/jyuNMVF5lXbAmsBvKnISs3xi2Fmb3Jgz30zqQKvRM871Zt9mC2vekyqXZlLe3MKNpGjCcttmFdW6aLLysSI7ubSJbmnxhcOL2GxHXaAVHjG5o9IqqjBnRF2hooMooMTtSmMTK2q8oZu7055XyFehPUQ5m9jT11jFLXM2o24UxnLQXK1RKduToBrH+y9khAHcZf13e4D93fLbKtMDePPUdw7uhP3yjdcdeHwlseOlyl2BKzN3CDOMnkDgqD3D9Td/KD17oKN5zqdQM6sfHp385S/ulUFivDgCcDwi+2ZiGrVMa6IMAYPLH8efdKN0UURL7Q37tkKN1uOMgFx1Ufob5+Oh8xVqtVQ6klFJycDPThxOceYnoNuWmBv1GJYnPZ7IHQZPIeGsTJs93Q4GDUbOCQuB/k6wc18nRGOhtsW63EGcnOeB1X+PI9Y/sr3TU7yP8D58DPJ+5ekAlXiOB+vUQ2yud088HiOvLI7xFe3Yskesqaagkj4zltVwZlsqsH7DeXTgPgQfvElxRKMcA7vEHGnhmcuaLj7kcs40OFvMCCVbpnOMwSmxM2QSbyuSpiUEClpBzs0MctNff4m9tXHOUhkjFitGtjZKvKHsggFS+VeEwpbTDHE6l5UFqxeJhty3DDsjhPA7Y2cXOBoZ7u7vgAcmeYe6UuZHLlTf9Cva7R56nsEgAb3DuknqN0SQ+ox+cvs95TfENoVxiJ/eSwr4nNhyuL2M0OatyMRVXucnSYvWLTMrOmWbn7QUbrUzLYzBQTN1BkXjaYQ2gsJxA6bYl3uNJ2RkoxBQLfuADPMXVcZjTaV0TkCeedCZGUoyCjO5eKbgZMbNQJEx/BQclFDJ0BWlPXWN7enAjRxDLV4kpX0BuwsUgJy3ph3VfXuA1MJRMiFWVuFy2OOnlxP8RscbYtB5bdH36TN6mFxzPnMa1TUDrknwglzdYUt0GB/ceE6mysYlVp+8qbupWnx1wpPfjiYRWQsQeS6IvAFzz05fSdsKDBAOb6knp9/OGVN1cAatqF6L1aTky0VfQhubI1qgXUpS4nT/Uqc9OghVaxXGCNBGyIAMCYVUzJPZ0RdaPL3PZBSopdDy/Uvep6iL7i33FO6d4IA6MP10zx9RjTlrPWVbYHlFtxagAryAbHcrcR66+ZhjJ9MWcdWYbGuMEa/l+Kk6ehOP909TdIroGwMgEjjnT8w09fIzxWynAZd7gw3CeY13T8lns7OodzUA7uviQd1tfvjHkrVHNOINTSbbmBJu4JHQ/DlBr243RPNenshVA95chIAu0u+Jtp35dwozrNbWyYyOWcYrYrGFfaWOGTF1XbgXXM2r2wXQzz21LM5yBoYmOpO+jRSb2EXHtGz6KupggLk51zM9nWJzkiO0tZbLlSdIpLinSFv4h+pkhtS0OTpJF9Vg19H0h0ImBMYuIM9MSvJWM0Z0jCVWZJSxNVbEpjdvQKOinrN0WYCoJrTedck2gF3gFzWhtZtIiu3w0EVapgKVdYCdDC85mNdOkmoNMxjvidmtO1kqUsQS6owBckcJlTfE5coYLutzhgkkYf21cdY4KgKozxx/meU2WC9RU1xnJ8BrPV1Wxk/tE6cek2GKtgzAZY+Xpx+J+EArPl0Rf7j3a4GsPqLgAd2v8/EwKyp5Z36nA8BoPhA5F4oZ0HwGc8FGB/JnLVCSXbi3wXkPvrBdq3VGmq0qtZKe/qCWVckHv5fWa21y6qrZWqh4OmDjxEXi3svCkhgwmbTcMGGQcgzPcgpjA1WLqpBYd+Y0rJpEt426y6jj1ivTDVpiWqm6WB4B28t4E/MCep2NU30H9a5+G638Gea2mnbfodxvQ5Pwjj2Xr8v27h8iNR8/WUTOaSHNTkeoHrEW1amAY7vsqMdCceE8ltqscYHOef5KqTo5Zdii2O9UzPVWijGZ5yzpR4lTdWebkknJARe8wdYF+HDcpldXg4Cco7QAGs64R9oUFpYqDNGpL3QQ38we714yapS6Mmhh7tZIr/HmSW5Ia0e7F1LrUBigZhVAy0sNbHGyLpB7pcCa0HzJVXIjY2ogFYr9YVQuYJXo66StNDOxyi0BoaVKwIii+1OYSVaL7yrjSO1GtCmfvpz34MBd5mHMnddmHlJxOVagi62Yk4zGCp3QNJig7oDBrmjppCH0OJlWbSR+Rjb2do9tmPgPmf49Y6qDgOp18BrA9h08L5Z8yfoBGDDUnoPv5TrWopDwWwC7fAY+XnCLG3xuqf0jJ8f+5lUTJUd+T5Q8DdRm540+QiWdCR5PbWwFvKxcvpTBQLqBowJ1Go1HLHCEbE2O9qd1WQo2N7VgxbXLYOQQdNNMcuYLq2tdxR8e885Lg8puVIvx+DthU/MOhMHvNrKhILBQBksSAFHXJ0l6QwrGKbdQXJYA5011ECkwuIl2h7S0VqbjJcVQRkFao17O9kDTlg8ZvbXtlcgimKlOomDuVGZagxrndJ18o8vNkUHVsoBvAA7oClgMkZxx16zzL+z9NKvvqe/v6ntEnPn4R5SjQEnY0vk3ijfuDD1GnyMt7OnFQf1qQf7s5x8RNUG9RRv2kf+px/JmVmdxwf2Pr4Z+mPSKmRkvg9NtFcoD1x6/ZnlNoUM6z1lyuUI/tPzH8iIrlOM4fLW0cklsS2q4MKuammBNkoCVrUpyxwq7FR566ZswK4uCI9uKQ5zzG0sk4WdUYpaKQSbo2pXva1MaUxmIbOzcnJE9JaW2AIs8O9GyRV6Oe5E7C/didi+iJxPTlZz3mJi9eYLU1nbJaHbGdOvDEq6RdbJkxkEAE45pWCweo45ztDBgd++Jjb3Uqk+No1jl00ijaNPIhlO7ONYFfVNNIMc3yAInMuqzKq2sgqaTpl7ugBVJ905jBLkYiJ6/SZi4MyxySMOnfJ5eonCvdF9F+sY22sHHYEOtmpgH/aPHC/5m7DQ95+AktjhfvoJqV0HhLN6LwRhSTLfCG1AMBfPy5TGmnDvPwlblyQSORA8oiLxVs3d1Ggi+5pl205CK6V/UFb3VSno4JSohOGxklWU8DgZ464MZVaOdCO7DA4II4QvZdLiatQ7BHxirZ1AiowfhgkeM3q3BQbgpuANOyQAPA5zM6FVy2SG05HX4zMbY1a39Imv6WI9trjQqfGJ9v3S0kao/wCVcDllmZgqgZIHEjiYHG+gRlT2D7JUPRcD9L1FPjz+cErDD5/eB5sP+hOewBP4c7xOaj137X5j2sa+amGbQpY1/ac/GFqiEvyY4pvvIO9cef2IjumjTZ7Epjmp+Bii5Os588eVM5MiplEMlUaTqLNtySi6J0KbqkSMQNNlgnJEfugnAAIeVjoXpZgDgJdKcKYyIsPINGHujJC8SQWajrmY72sJJEEc6zrTTANLWviHtdDHGI6Jm855Yoti2cvqhbhA1psIaglnEWWTiuKMDpcaYMrUraQK9fHCVtXzxixjewWVqoeMGYx8tEGAXdqOUvHJFMItkAl9zWRlxLcwWao+BGFlcg6RU9wTne1zxJGT455zGzrvv4XgQ2CNFIIOTnn/AJixVuwpH0Cw1Ud59QBC2EH2XSK00DcQoz4nX+YWupxKSLw6KuwUFjoFXygqvkY6zPb74pY/e6r5DLH5QSwq/pPlJs6MfVhFzb764/xM6V3cqeNOooySlRNx/wAoA3aijQeKk68Yap5zRHHSNF0VbTVNWKrjbLBdbPtdrhXQpwONd0Hjjl9Iir7Oe7rCpVBSnTGEpI7buerHTePDXHKetrqp4iYIozGlJsycY9I1tbYIviAAOSqOAnzT/wCQtse/q/hqXaS3DM+Do9UDRe8L8yek9B7V+1RAahakFzlXqD8lMcwp5kdeXjw+e07cBhuElwwwckFy/ZOo55PpnnwEDU+2fQ/Zqp7tKCkkkohbOQS7kucg657c9BfUcg/en3ieYrZWogHBSR5IoQH/AIq09pQXfQE8SMHxAgk7ZBqkBbKxnd/cCPhpFz25zryjK1p7rkd59PvSE3FsN7e66+fP4yGa+No5sq3Yop2pm/4UxgABKlhOdP7JiupRg7Uo3qKJj7sSU8ldGAEt5qKMLCiRpP1WzWBbk7CcTkPqM1ghomZG1Mde5k9xOxZTWKkoGXNOMvcSj0IHkA2LtZ0oxhLUoVTScmTJsIjrWRPGVSz3TwnomtxiZm3lYTdCsX01lalDMZfhxOigJuW7NYmNiOkDubcL/jjPTNRii/oHXErHI09mPM3Rxx3R47pYeXL0nLK4G8q6sHbBU6BhjUnmfHMrf25B1k2Jau9xTU5wWGBg6gZJz0UDJ144nbBp9FUtH0+gOyO8Z9ZpbrznXGk6/ZTxj1bKLSoR+0LH/THIl2+IAPzgltoRCNuv/qqv7EXyJ1lKKcJOXZ0w/Eb0KeRpCVCjiJlb8JyuYyVC22zK53RqDmeX21fOcpT0zoccSI+uBoZ528TdBbmeElJstFI8RtWqKfYX8x9T9Bn74Sey1MvWVzj/AEhv+L5wgx03iIdtDZYqtvoQDkHXPZbnkdOkfbF2aKKcBvOd9jjuwB85RNJGlLQa9HClscMIvU8AT6n4z0uyj+jqqkf3DQ+oHwitqXaROnHy1PxPwjK1U8RxUjHzklLZOS0b3dLDq/I8fL/HykuXwrZ0KHP+04+o9YeVDocc9cftccvvqYJWt95fAFH5HcbQHxGSPMdI8levs5pq1/DzdztEZwDmbW1dm1ioWZR2R/zIxHd5RzaU8CeNLK1PiyKCCZQ5m+Jzcj8VLYtmMqZuUlCk3BI1mWJJr7uSajWGZnZXMmZQBcThWV3p3egMYvTlqQmuZMxJQTMXE5iQNJmN0Y7uzJ2l2eCvVwe/5R8cHOSSDGLk6QWtIniQPiZqtpTb8wz4n6QBCx5mbopnpxhCOqv+nTHCkSvRRT2Upjv3FJ9TNLCmS2emnDHGVZYwtqW6ne0pHb0GSUYl1TJAg924L7vQgfX5GGqQoJPIGeYvb8DUHU72PPn8/WM9IWG2CX1bfruw6gemkLsxnEVbP7RZjzJjbZ/PuMg+zqWlQ2pcJWpOqZVmjWIDVkibatHQeEd1nAGsUV7pSCrdcqeh6eEnJWUjYmsLDDZPHJOveY4pWuqg65O8fAa/wPUwFqu7wxr6w61vcb7sNFAVB1OnDyGPOKmugysIpJ22Y8gfnrGmztVB65Pxi2upCHrUwCemRr/MPsH3UA6afGBInLob29LXTn85HXDZxx0YdQdCPOYW94BM77aagb2M40IHEjnKRaSJOLbANu7OCuKicHA/5KMD1XH/ABgdLSekQrXo9kg5GVPeOHgeR74gZe7BHHrmed5eKMZcvv8A6c8va6LqZoJgDL+8kIzSJmmJQyjVZk1aNzQbCJIJ+Ikm5o1hgM7mU3p0GbmgNnTOgzmZAZuYLLZnZAZIvI1kkkzOEzcjWcaBW3aJJ5wuu2EY9Fb5QXZ50E7fE6bOnx1dsZ0kAE0AmaGaZnZZ0l6NPLAQ4nJ7hB0YKO8+oEyq3IA44HEnoMy0aSISuTMtt3WE3Rxc4/2jU/x6GePqqxbXhD7naG+5PLkOglV1iSlfRWEaR22G6MRjYaZgdNITT0k7K0GvWmbVsDMFBJkYZitmUQa7uieEBSxdzwwI5p24h9LdWam+xnJJaFtDYqgZOSepnFsQWA5A8OpjSrW0mFtqSen0hcYiOTKXQ4S9uukrcHO535M2pccQJbFf4mDc4LUOh++cOqLqYvqHsnvP1joVG3s5fFKm5+hiT/a3PyIEY7XpgOxXnhiPEcfCeTSuVqKw/coPgTg5notvXGBTPVSO/Kt9CJzeXG8L/WyOda5AzPM2qQF7wfeJibqeA+RzcgypXg73MFetmDVXMeF/IGwr8XJFm8Z2XpC2eyDywaZrLCah6L706DKgTRVgNRAZMywWdKw3RqKEyZnTKlojmbiZXZ7D/wBrfKD2B4TW9bsP/aZjY8p6XhSuDf7Orx1SY2Uzu/jXpKrwnHGk7bOpKzKrd5yIsv7gnsg6cz+5voOUup1YcwcTN0gUmZxQCiQ2gkotOEosKMaqJoolUWagTGKgS4WcWQtAMWziT3kyJkgbBRWs8stTdpMRxbAHcT9mD1RL3DYCr01PiYEzNBB/R/Sg+/hNEOo8YLv5IHRRCkjfIK0aVeJ8IouGwoHnGVV9M/0xVXbMdiRQoun7Snqyg+ZAH8T0ftCMqi9N/wCY+s8vcnLoOr0x6uB/M9jfqGx3Z/iR8h1hbI5+qPJVKDSnuTPRtbiZG2E+feW5UcvFCIoRMnBjx7WDtad03qpMziKNwzkafhe6SN6qNxG6vN0MWCoBN6d0I/JhYeJYPBPxImb3IjCjD3kq9SLfxcsbkQSYUb1a+IM11B69cdYA91DCCYGxjXuMow6iEWJ4RGLnOnWNbCpPU8aPGNfs6/H/ABY/SWfhB6T6TtWrpOk6V2KnqAVGHXB+c1OsS7Tut2umv5g48xgj+Ywp3S8yIEMwxUlwIE20UXi6jzEou16X/wBlP/mv1hoUbLOsYvO1aeNHQ+DL9YOu01J4j1EOzDMtOEwOndKeYmi3S9YrCgpVmoWD07heo9YSrA8CIKNZkU1gV8/a8cfM/wCIXcvgRFXusuo7z0005wUMOLfjnuhyQC3aGhtIUAyuG7MXVtBDLl4vuX0jNgSoVAb1xSH/AOiN5Kd7+J613yZ5XZq71yn9IqN5bpHzInpzOPy564nHnfuojSgmoE4RieX6O9ECvu5R1EsWmNRoV4yewplcyTPekh/xzHna+0MQQbVPfOyTqjCNGpGybW8Zc7TzJJGcEBpGT7RnRtSSSH04mpAVxtTxgT7SMkk6ceKNdFIwR2xvi1RR1z8jPWWlaSSXpJaOnEkuhtTuJnc3Wkkkxc+f+120WDKVOCraehnmK+1az/mqPjoCVHwnZJ0QSozAmYnUknxOZwCSSOKTEmJJJjHQxHAn1Mulww/K7DwZhJJMY3TaldeFar/5GI9DC6ftFdL+Wu//AK/SSSCkYNpe2t2ujMj/ANyD5jEYbH9onr3CKyqPzHIJxop5TkkEoR4s1nvbevChcTsk5UFAte5i25utDJJCgnPZl965f+mm3xZZ6lpJJ5fmN8/9Hn5/zOb+Jg9aSSRi3xJmTVYJWucSSQKbswP+Kkkkjc2Y/9k=";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Kari bhoyar"),
                  accountEmail: Text("karibhoyar@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}