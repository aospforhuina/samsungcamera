.class public Lr/g;
.super Ljava/lang/Object;
.source "ColorParser.java"

# interfaces
.implements Lr/n0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr/n0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/g;

    invoke-direct {v0}, Lr/g;-><init>()V

    sput-object v0, Lr/g;->a:Lr/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ls/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr/g;->b(Ls/c;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Ls/c;F)Ljava/lang/Integer;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ls/c;->z()Ls/c$b;

    move-result-object p0

    sget-object p2, Ls/c$b;->a:Ls/c$b;

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p1}, Ls/c;->b()V

    .line 3
    :cond_1
    invoke-virtual {p1}, Ls/c;->p()D

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Ls/c;->p()D

    move-result-wide v2

    .line 5
    invoke-virtual {p1}, Ls/c;->p()D

    move-result-wide v4

    .line 6
    invoke-virtual {p1}, Ls/c;->z()Ls/c$b;

    move-result-object p2

    sget-object v6, Ls/c$b;->k:Ls/c$b;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ne p2, v6, :cond_2

    .line 7
    invoke-virtual {p1}, Ls/c;->p()D

    move-result-wide v9

    goto :goto_1

    :cond_2
    move-wide v9, v7

    :goto_1
    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p1}, Ls/c;->f()V

    :cond_3
    cmpg-double p0, v0, v7

    if-gtz p0, :cond_4

    cmpg-double p0, v2, v7

    if-gtz p0, :cond_4

    cmpg-double p0, v4, v7

    if-gtz p0, :cond_4

    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v4, p0

    cmpg-double p2, v9, v7

    if-gtz p2, :cond_4

    mul-double/2addr v9, p0

    :cond_4
    double-to-int p0, v9

    double-to-int p1, v0

    double-to-int p2, v2

    double-to-int v0, v4

    .line 9
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
