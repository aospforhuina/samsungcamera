.class public Lz3/a;
.super Ljava/lang/Object;
.source "FaceFeatureInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz3/a$c;,
        Lz3/a$a;,
        Lz3/a$b;
    }
.end annotation


# instance fields
.field private a:Lz3/a$b;

.field private b:Lz3/a$a;

.field private c:Lz3/a$c;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lz3/a$b;->f:Lz3/a$b;

    iput-object v0, p0, Lz3/a;->a:Lz3/a$b;

    .line 3
    sget-object v0, Lz3/a$a;->f:Lz3/a$a;

    iput-object v0, p0, Lz3/a;->b:Lz3/a$a;

    .line 4
    new-instance v0, Lz3/a$c;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lz3/a$c;-><init>(DDD)V

    iput-object v0, p0, Lz3/a;->c:Lz3/a$c;

    return-void
.end method


# virtual methods
.method public a()Lz3/a$b;
    .locals 0

    iget-object p0, p0, Lz3/a;->a:Lz3/a$b;

    return-object p0
.end method

.method public b()Lz3/a$c;
    .locals 0

    iget-object p0, p0, Lz3/a;->c:Lz3/a$c;

    return-object p0
.end method

.method public c(Lz3/a$a;)V
    .locals 0

    iput-object p1, p0, Lz3/a;->b:Lz3/a$a;

    return-void
.end method

.method public d(Lz3/a$b;)V
    .locals 0

    iput-object p1, p0, Lz3/a;->a:Lz3/a$b;

    return-void
.end method

.method public e(DDD)V
    .locals 8

    new-instance v7, Lz3/a$c;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lz3/a$c;-><init>(DDD)V

    iput-object v7, p0, Lz3/a;->c:Lz3/a$c;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blink : "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz3/a;->b:Lz3/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Expression: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz3/a;->a:Lz3/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Headpose: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz3/a;->c:Lz3/a$c;

    invoke-virtual {p0}, Lz3/a$c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
