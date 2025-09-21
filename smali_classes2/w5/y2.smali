.class Lw5/y2;
.super Lw5/p0;
.source "SmsQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method

.method private o(Ly2/b0;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ly2/b0;->f()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lw5/p0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ly2/b0;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p0}, Lcom/sec/android/app/camera/util/TextUtil;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const/4 p0, 0x1

    aput-object p1, p2, p0

    const-string p0, "%s, %s"

    .line 4
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    check-cast p2, Ly2/b0;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lw5/y2;->o(Ly2/b0;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected f(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    check-cast p2, Ly2/b0;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lw5/y2;->o(Ly2/b0;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f120494

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
