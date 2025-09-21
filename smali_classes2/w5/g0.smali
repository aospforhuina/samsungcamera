.class Lw5/g0;
.super Lw5/p0;
.source "PhoneNumberQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method


# virtual methods
.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    check-cast p2, Ly2/f0;

    invoke-virtual {p2}, Ly2/f0;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected f(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    check-cast p2, Ly2/f0;

    invoke-virtual {p2}, Ly2/f0;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/TextUtil;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f120496

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
