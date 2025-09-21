.class public Lo/b;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lo/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ln/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ln/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln/m;Ln/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ln/f;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/b;->b:Ln/m;

    .line 4
    iput-object p3, p0, Lo/b;->c:Ln/f;

    .line 5
    iput-boolean p4, p0, Lo/b;->d:Z

    .line 6
    iput-boolean p5, p0, Lo/b;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/f;

    invoke-direct {v0, p1, p2, p0}, Lj/f;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/b;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ln/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo/b;->b:Ln/m;

    return-object p0
.end method

.method public d()Ln/f;
    .locals 0

    iget-object p0, p0, Lo/b;->c:Ln/f;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lo/b;->e:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lo/b;->d:Z

    return p0
.end method
