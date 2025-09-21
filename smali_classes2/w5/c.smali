.class Lw5/c;
.super Lw5/p0;
.source "EmailQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method


# virtual methods
.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    check-cast p2, Ly2/j;

    invoke-virtual {p2}, Ly2/j;->i()[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f12048e

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
