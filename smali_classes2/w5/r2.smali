.class Lw5/r2;
.super Lw5/p0;
.source "SamsungAccountQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method

.method private o(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f120487

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lw5/r2;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const p0, 0x7f120480

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f120499

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
