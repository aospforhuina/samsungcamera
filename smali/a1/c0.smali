.class public final La1/c0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final a:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "La1/b<",
            "*>;",
            "Ly0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "La1/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f<",
            "Ljava/util/Map<",
            "La1/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "La1/b<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, La1/c0;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b(La1/b;Ly0/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/b<",
            "*>;",
            "Ly0/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La1/c0;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La1/c0;->b:Landroidx/collection/ArrayMap;

    .line 2
    invoke-virtual {v0, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, La1/c0;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La1/c0;->d:I

    .line 3
    invoke-virtual {p2}, Ly0/a;->i()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, La1/c0;->e:Z

    :cond_0
    iget p1, p0, La1/c0;->d:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, La1/c0;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Lz0/c;

    iget-object p2, p0, La1/c0;->a:Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {p1, p2}, Lz0/c;-><init>(Landroidx/collection/ArrayMap;)V

    iget-object p0, p0, La1/c0;->c:Lp1/f;

    .line 5
    invoke-virtual {p0, p1}, Lp1/f;->b(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, La1/c0;->c:Lp1/f;

    iget-object p0, p0, La1/c0;->b:Landroidx/collection/ArrayMap;

    .line 6
    invoke-virtual {p1, p0}, Lp1/f;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
