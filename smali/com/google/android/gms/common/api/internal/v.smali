.class public final Lcom/google/android/gms/common/api/internal/v;
.super La1/s;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "La1/s;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/common/api/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/c<",
            "Lz0/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final c:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final d:La1/l;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/c;Lp1/f;La1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/internal/c<",
            "Lz0/a$b;",
            "TResultT;>;",
            "Lp1/f<",
            "TResultT;>;",
            "La1/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La1/s;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/v;->c:Lp1/f;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/v;->b:Lcom/google/android/gms/common/api/internal/c;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/v;->d:La1/l;

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/c;->c()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->c:Lp1/f;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/v;->d:La1/l;

    invoke-interface {p0, p1}, La1/l;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {v0, p0}, Lp1/f;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/v;->c:Lp1/f;

    invoke-virtual {p0, p1}, Lp1/f;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/m<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->b:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m;->v()Lz0/a$f;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/v;->c:Lp1/f;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/c;->b(Lz0/a$b;Lp1/f;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/v;->c:Lp1/f;

    .line 3
    invoke-virtual {p0, p1}, Lp1/f;->d(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/x;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p0

    .line 5
    throw p0
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/v;->c:Lp1/f;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/api/internal/e;->b(Lp1/f;Z)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/m;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/m<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/v;->b:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c;->c()Z

    move-result p0

    return p0
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/m;)[Ly0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/m<",
            "*>;)[",
            "Ly0/c;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/v;->b:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/c;->e()[Ly0/c;

    move-result-object p0

    return-object p0
.end method
