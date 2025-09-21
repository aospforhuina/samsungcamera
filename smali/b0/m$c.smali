.class Lb0/m$c;
.super Lb0/c;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/c<",
        "Lb0/m$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb0/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lb0/l;
    .locals 0

    invoke-virtual {p0}, Lb0/m$c;->d()Lb0/m$b;

    move-result-object p0

    return-object p0
.end method

.method protected d()Lb0/m$b;
    .locals 1

    new-instance v0, Lb0/m$b;

    invoke-direct {v0, p0}, Lb0/m$b;-><init>(Lb0/m$c;)V

    return-object v0
.end method

.method public e(ILandroid/graphics/Bitmap$Config;)Lb0/m$b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb0/c;->b()Lb0/l;

    move-result-object p0

    check-cast p0, Lb0/m$b;

    .line 2
    invoke-virtual {p0, p1, p2}, Lb0/m$b;->b(ILandroid/graphics/Bitmap$Config;)V

    return-object p0
.end method
