.class Lm3/w$c;
.super Ljava/lang/Object;
.source "VisionTextDrawHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field c:[Landroid/graphics/Point;


# direct methods
.method constructor <init>(ILjava/lang/String;[Landroid/graphics/Point;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lm3/w$c;->a:I

    .line 3
    iput-object p2, p0, Lm3/w$c;->b:Ljava/lang/String;

    .line 4
    array-length p1, p3

    new-array p1, p1, [Landroid/graphics/Point;

    iput-object p1, p0, Lm3/w$c;->c:[Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 5
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 6
    iget-object p2, p0, Lm3/w$c;->c:[Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    aget-object v1, p3, p1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
