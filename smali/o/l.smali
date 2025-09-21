.class public Lo/l;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lo/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ln/b;

.field private final c:Ln/b;

.field private final d:Ln/l;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln/b;Ln/b;Ln/l;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/l;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/l;->b:Ln/b;

    .line 4
    iput-object p3, p0, Lo/l;->c:Ln/b;

    .line 5
    iput-object p4, p0, Lo/l;->d:Ln/l;

    .line 6
    iput-boolean p5, p0, Lo/l;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/p;

    invoke-direct {v0, p1, p2, p0}, Lj/p;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/l;)V

    return-object v0
.end method

.method public b()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/l;->b:Ln/b;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ln/b;
    .locals 0

    iget-object p0, p0, Lo/l;->c:Ln/b;

    return-object p0
.end method

.method public e()Ln/l;
    .locals 0

    iget-object p0, p0, Lo/l;->d:Ln/l;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lo/l;->e:Z

    return p0
.end method
