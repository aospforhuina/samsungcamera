.class public Lr/b0;
.super Ljava/lang/Object;
.source "PointFParser.java"

# interfaces
.implements Lr/n0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr/n0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/b0;

    invoke-direct {v0}, Lr/b0;-><init>()V

    sput-object v0, Lr/b0;->a:Lr/b0;

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

    invoke-virtual {p0, p1, p2}, Lr/b0;->b(Ls/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public b(Ls/c;F)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ls/c;->z()Ls/c$b;

    move-result-object p0

    .line 2
    sget-object v0, Ls/c$b;->a:Ls/c$b;

    if-ne p0, v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Lr/s;->e(Ls/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Ls/c$b;->c:Ls/c$b;

    if-ne p0, v0, :cond_1

    .line 5
    invoke-static {p1, p2}, Lr/s;->e(Ls/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    sget-object v0, Ls/c$b;->k:Ls/c$b;

    if-ne p0, v0, :cond_3

    .line 7
    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ls/c;->p()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Ls/c;->p()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Ls/c;->k()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ls/c;->D()V

    goto :goto_0

    :cond_2
    return-object p0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert json to point. Next token is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
