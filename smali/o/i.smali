.class public Lo/i;
.super Ljava/lang/Object;
.source "MergePaths.java"

# interfaces
.implements Lo/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/i$a;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/i$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/i;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/i;->b:Lo/i$a;

    .line 4
    iput-boolean p3, p0, Lo/i;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/lottie/n;->A()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Animation contains merge paths but they are disabled."

    .line 2
    invoke-static {p0}, Lt/d;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Lj/l;

    invoke-direct {p1, p0}, Lj/l;-><init>(Lo/i;)V

    return-object p1
.end method

.method public b()Lo/i$a;
    .locals 0

    iget-object p0, p0, Lo/i;->b:Lo/i$a;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lo/i;->c:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo/i;->b:Lo/i$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
