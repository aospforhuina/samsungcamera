.class public Lr/r;
.super Ljava/lang/Object;
.source "IntegerParser.java"

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
.field public static final a:Lr/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/r;

    invoke-direct {v0}, Lr/r;-><init>()V

    sput-object v0, Lr/r;->a:Lr/r;

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

    invoke-virtual {p0, p1, p2}, Lr/r;->b(Ls/c;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Ls/c;F)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lr/s;->g(Ls/c;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
