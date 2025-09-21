.class Lw5/b3;
.super Lw5/p0;
.source "WifiQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method


# virtual methods
.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p2, Ly2/q0;

    .line 2
    invoke-virtual {p2}, Ly2/q0;->g()Ly2/r0;

    move-result-object p0

    sget-object p1, Ly2/r0;->a:Ly2/r0;

    if-ne p0, p1, :cond_0

    invoke-virtual {p2}, Ly2/q0;->i()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ly2/q0;->h()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f1204a0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
