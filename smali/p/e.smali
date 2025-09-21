.class public Lp/e;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/e$b;,
        Lp/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lh/h;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Lp/e$a;

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/h;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ln/l;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:F

.field private final n:F

.field private final o:I

.field private final p:I

.field private final q:Ln/j;

.field private final r:Ln/k;

.field private final s:Ln/b;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/a<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Lp/e$b;

.field private final v:Z

.field private final w:Lo/a;

.field private final x:Lr/j;


# direct methods
.method public constructor <init>(Ljava/util/List;Lh/h;Ljava/lang/String;JLp/e$a;JLjava/lang/String;Ljava/util/List;Ln/l;IIIFFIILn/j;Ln/k;Ljava/util/List;Lp/e$b;Ln/b;ZLo/a;Lr/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/c;",
            ">;",
            "Lh/h;",
            "Ljava/lang/String;",
            "J",
            "Lp/e$a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/h;",
            ">;",
            "Ln/l;",
            "IIIFFII",
            "Ln/j;",
            "Ln/k;",
            "Ljava/util/List<",
            "Lu/a<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lp/e$b;",
            "Ln/b;",
            "Z",
            "Lo/a;",
            "Lr/j;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lp/e;->a:Ljava/util/List;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lp/e;->b:Lh/h;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lp/e;->c:Ljava/lang/String;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lp/e;->d:J

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lp/e;->e:Lp/e$a;

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lp/e;->f:J

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lp/e;->g:Ljava/lang/String;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lp/e;->h:Ljava/util/List;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lp/e;->i:Ln/l;

    move v1, p12

    .line 11
    iput v1, v0, Lp/e;->j:I

    move/from16 v1, p13

    .line 12
    iput v1, v0, Lp/e;->k:I

    move/from16 v1, p14

    .line 13
    iput v1, v0, Lp/e;->l:I

    move/from16 v1, p15

    .line 14
    iput v1, v0, Lp/e;->m:F

    move/from16 v1, p16

    .line 15
    iput v1, v0, Lp/e;->n:F

    move/from16 v1, p17

    .line 16
    iput v1, v0, Lp/e;->o:I

    move/from16 v1, p18

    .line 17
    iput v1, v0, Lp/e;->p:I

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lp/e;->q:Ln/j;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lp/e;->r:Ln/k;

    move-object/from16 v1, p21

    .line 20
    iput-object v1, v0, Lp/e;->t:Ljava/util/List;

    move-object/from16 v1, p22

    .line 21
    iput-object v1, v0, Lp/e;->u:Lp/e$b;

    move-object/from16 v1, p23

    .line 22
    iput-object v1, v0, Lp/e;->s:Ln/b;

    move/from16 v1, p24

    .line 23
    iput-boolean v1, v0, Lp/e;->v:Z

    move-object/from16 v1, p25

    .line 24
    iput-object v1, v0, Lp/e;->w:Lo/a;

    move-object/from16 v1, p26

    .line 25
    iput-object v1, v0, Lp/e;->x:Lr/j;

    return-void
.end method


# virtual methods
.method public a()Lo/a;
    .locals 0

    iget-object p0, p0, Lp/e;->w:Lo/a;

    return-object p0
.end method

.method b()Lh/h;
    .locals 0

    iget-object p0, p0, Lp/e;->b:Lh/h;

    return-object p0
.end method

.method public c()Lr/j;
    .locals 0

    iget-object p0, p0, Lp/e;->x:Lr/j;

    return-object p0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lp/e;->d:J

    return-wide v0
.end method

.method e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/a<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lp/e;->t:Ljava/util/List;

    return-object p0
.end method

.method public f()Lp/e$a;
    .locals 0

    iget-object p0, p0, Lp/e;->e:Lp/e$a;

    return-object p0
.end method

.method g()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/h;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lp/e;->h:Ljava/util/List;

    return-object p0
.end method

.method h()Lp/e$b;
    .locals 0

    iget-object p0, p0, Lp/e;->u:Lp/e$b;

    return-object p0
.end method

.method i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method j()J
    .locals 2

    iget-wide v0, p0, Lp/e;->f:J

    return-wide v0
.end method

.method k()I
    .locals 0

    iget p0, p0, Lp/e;->p:I

    return p0
.end method

.method l()I
    .locals 0

    iget p0, p0, Lp/e;->o:I

    return p0
.end method

.method m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method n()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lp/e;->a:Ljava/util/List;

    return-object p0
.end method

.method o()I
    .locals 0

    iget p0, p0, Lp/e;->l:I

    return p0
.end method

.method p()I
    .locals 0

    iget p0, p0, Lp/e;->k:I

    return p0
.end method

.method q()I
    .locals 0

    iget p0, p0, Lp/e;->j:I

    return p0
.end method

.method r()F
    .locals 1

    iget v0, p0, Lp/e;->n:F

    iget-object p0, p0, Lp/e;->b:Lh/h;

    invoke-virtual {p0}, Lh/h;->e()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method s()Ln/j;
    .locals 0

    iget-object p0, p0, Lp/e;->q:Ln/j;

    return-object p0
.end method

.method t()Ln/k;
    .locals 0

    iget-object p0, p0, Lp/e;->r:Ln/k;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lp/e;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method u()Ln/b;
    .locals 0

    iget-object p0, p0, Lp/e;->s:Ln/b;

    return-object p0
.end method

.method v()F
    .locals 0

    iget p0, p0, Lp/e;->m:F

    return p0
.end method

.method w()Ln/l;
    .locals 0

    iget-object p0, p0, Lp/e;->i:Ln/l;

    return-object p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Lp/e;->v:Z

    return p0
.end method

.method public y(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lp/e;->b:Lh/h;

    invoke-virtual {p0}, Lp/e;->j()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lh/h;->t(J)Lp/e;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lp/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p0, Lp/e;->b:Lh/h;

    invoke-virtual {v2}, Lp/e;->j()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lh/h;->t(J)Lp/e;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lp/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v3, p0, Lp/e;->b:Lh/h;

    invoke-virtual {v2}, Lp/e;->j()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lh/h;->t(J)Lp/e;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lp/e;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/e;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    invoke-virtual {p0}, Lp/e;->q()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lp/e;->p()I

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 13
    invoke-virtual {p0}, Lp/e;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lp/e;->p()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lp/e;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    iget-object v2, p0, Lp/e;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p0, p0, Lp/e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
