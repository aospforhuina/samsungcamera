.class Lh0/m$f;
.super Lh0/m;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lh0/m$g;
    .locals 0

    sget-object p0, Lh0/m$g;->b:Lh0/m$g;

    return-object p0
.end method

.method public b(IIII)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
