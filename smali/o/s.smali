.class public Lo/s;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lo/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/s$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/s$a;

.field private final c:Ln/b;

.field private final d:Ln/b;

.field private final e:Ln/b;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/s$a;Ln/b;Ln/b;Ln/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/s;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/s;->b:Lo/s$a;

    .line 4
    iput-object p3, p0, Lo/s;->c:Ln/b;

    .line 5
    iput-object p4, p0, Lo/s;->d:Ln/b;

    .line 6
    iput-object p5, p0, Lo/s;->e:Ln/b;

    .line 7
    iput-boolean p6, p0, Lo/s;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 0

    new-instance p1, Lj/u;

    invoke-direct {p1, p2, p0}, Lj/u;-><init>(Lp/b;Lo/s;)V

    return-object p1
.end method

.method public b()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/s;->d:Ln/b;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/s;->e:Ln/b;

    return-object p0
.end method

.method public e()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/s;->c:Ln/b;

    return-object p0
.end method

.method public f()Lo/s$a;
    .locals 0

    iget-object p0, p0, Lo/s;->b:Lo/s$a;

    return-object p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lo/s;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/s;->c:Ln/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/s;->d:Ln/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo/s;->e:Ln/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
