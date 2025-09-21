.class Lm3/w$g;
.super Ljava/lang/Object;
.source "VisionTextDrawHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Landroid/graphics/PointF;

.field final d:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(ILjava/lang/String;Ll3/a$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lm3/w$g;->a:I

    .line 3
    iput-object p2, p0, Lm3/w$g;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Ll3/a$g;->c()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object p1, p0, Lm3/w$g;->c:Landroid/graphics/PointF;

    .line 5
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Ll3/a$g;->d()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object p1, p0, Lm3/w$g;->d:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    iget-object v0, p0, Lm3/w$g;->c:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lm3/w$g;->d:Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
