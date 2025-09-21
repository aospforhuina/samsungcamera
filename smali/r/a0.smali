.class public Lr/a0;
.super Ljava/lang/Object;
.source "PathParser.java"

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
.field public static final a:Lr/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/a0;

    invoke-direct {v0}, Lr/a0;-><init>()V

    sput-object v0, Lr/a0;->a:Lr/a0;

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

    invoke-virtual {p0, p1, p2}, Lr/a0;->b(Ls/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public b(Ls/c;F)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p1, p2}, Lr/s;->e(Ls/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
