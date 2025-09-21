.class public Lo/o;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lo/c;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Ln/a;

.field private final e:Ln/d;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Ln/a;Ln/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/o;->c:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lo/o;->a:Z

    .line 4
    iput-object p3, p0, Lo/o;->b:Landroid/graphics/Path$FillType;

    .line 5
    iput-object p4, p0, Lo/o;->d:Ln/a;

    .line 6
    iput-object p5, p0, Lo/o;->e:Ln/d;

    .line 7
    iput-boolean p6, p0, Lo/o;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/g;

    invoke-direct {v0, p1, p2, p0}, Lj/g;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/o;)V

    return-object v0
.end method

.method public b()Ln/a;
    .locals 0

    iget-object p0, p0, Lo/o;->d:Ln/a;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lo/o;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ln/d;
    .locals 0

    iget-object p0, p0, Lo/o;->e:Ln/d;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lo/o;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lo/o;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
