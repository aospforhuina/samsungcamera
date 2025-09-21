.class public Lc5/f;
.super Ljava/lang/Object;
.source "SimpleLog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Lc5/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lc5/c;)V
    .locals 6

    const-string v1, ""

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lc5/f;-><init>(Ljava/lang/String;JLjava/lang/String;Lc5/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lc5/c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lc5/f;->a:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lc5/f;->b:J

    .line 6
    iput-object p4, p0, Lc5/f;->c:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lc5/f;->d:Lc5/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lc5/f;->b:J

    return-wide v0
.end method

.method public d()Lc5/c;
    .locals 0

    iget-object p0, p0, Lc5/f;->d:Lc5/c;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc5/f;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc5/f;->a:Ljava/lang/String;

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, Lc5/f;->b:J

    return-void
.end method

.method public h(Lc5/c;)V
    .locals 0

    iput-object p1, p0, Lc5/f;->d:Lc5/c;

    return-void
.end method
