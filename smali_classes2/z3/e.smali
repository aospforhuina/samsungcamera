.class public Lz3/e;
.super Ljava/lang/Object;
.source "OutputResultInfo.java"


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz3/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lz3/e;->b:Z

    return p0
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lz3/e;->b:Z

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz3/e;->c:Ljava/lang/String;

    return-void
.end method

.method e(J)V
    .locals 0

    iput-wide p1, p0, Lz3/e;->a:J

    return-void
.end method
