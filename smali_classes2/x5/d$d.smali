.class public Lx5/d$d;
.super Lx5/e$b;
.source "QuickSettingResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:Lx5/d$e;


# direct methods
.method constructor <init>(IIIIIIIIZZLx5/d$e;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p4}, Lx5/e$b;-><init>(III)V

    .line 20
    iput p3, p0, Lx5/d$d;->f:I

    .line 21
    iput p5, p0, Lx5/d$d;->g:I

    .line 22
    iput p6, p0, Lx5/d$d;->h:I

    .line 23
    iput p7, p0, Lx5/d$d;->i:I

    .line 24
    iput p8, p0, Lx5/d$d;->j:I

    .line 25
    iput-boolean p9, p0, Lx5/d$d;->k:Z

    .line 26
    iput-boolean p10, p0, Lx5/d$d;->l:Z

    .line 27
    iput-object p11, p0, Lx5/d$d;->m:Lx5/d$e;

    return-void
.end method

.method constructor <init>(IIIIIIZLx5/d$e;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p4}, Lx5/e$b;-><init>(III)V

    .line 11
    iput p3, p0, Lx5/d$d;->f:I

    .line 12
    iput p5, p0, Lx5/d$d;->g:I

    .line 13
    iput p6, p0, Lx5/d$d;->h:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lx5/d$d;->i:I

    .line 15
    iput p1, p0, Lx5/d$d;->j:I

    .line 16
    iput-boolean p1, p0, Lx5/d$d;->k:Z

    .line 17
    iput-boolean p7, p0, Lx5/d$d;->l:Z

    .line 18
    iput-object p8, p0, Lx5/d$d;->m:Lx5/d$e;

    return-void
.end method

.method constructor <init>(IIIZLx5/d$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lx5/e$b;-><init>(III)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lx5/d$d;->f:I

    .line 3
    iput p1, p0, Lx5/d$d;->g:I

    .line 4
    iput p1, p0, Lx5/d$d;->h:I

    .line 5
    iput p1, p0, Lx5/d$d;->i:I

    .line 6
    iput p1, p0, Lx5/d$d;->j:I

    .line 7
    iput-boolean p1, p0, Lx5/d$d;->k:Z

    .line 8
    iput-boolean p4, p0, Lx5/d$d;->l:Z

    .line 9
    iput-object p5, p0, Lx5/d$d;->m:Lx5/d$e;

    return-void
.end method


# virtual methods
.method public g()I
    .locals 0

    iget p0, p0, Lx5/d$d;->j:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lx5/d$d;->i:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lx5/d$d;->f:I

    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lx5/d$d;->h:I

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lx5/d$d;->g:I

    return p0
.end method

.method public l()Lx5/d$e;
    .locals 0

    iget-object p0, p0, Lx5/d$d;->m:Lx5/d$e;

    return-object p0
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lx5/d$d;->k:Z

    return p0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lx5/d$d;->l:Z

    return p0
.end method
