.class public final Lx2/b;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:I

.field private d:[Lx2/c;

.field private final e:Lx2/a;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI[Lx2/c;Lx2/a;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lx2/b;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lx2/b;->b:[B

    .line 6
    iput p3, p0, Lx2/b;->c:I

    .line 7
    iput-object p4, p0, Lx2/b;->d:[Lx2/c;

    .line 8
    iput-object p5, p0, Lx2/b;->e:Lx2/a;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lx2/b;->f:Ljava/util/Map;

    .line 10
    iput-wide p6, p0, Lx2/b;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lx2/c;Lx2/a;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lx2/b;-><init>(Ljava/lang/String;[B[Lx2/c;Lx2/a;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lx2/c;Lx2/a;J)V
    .locals 9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    :goto_0
    move v4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lx2/b;-><init>(Ljava/lang/String;[BI[Lx2/c;Lx2/a;J)V

    return-void
.end method


# virtual methods
.method public a()Lx2/a;
    .locals 0

    iget-object p0, p0, Lx2/b;->e:Lx2/a;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx2/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx2/b;->a:Ljava/lang/String;

    return-object p0
.end method
