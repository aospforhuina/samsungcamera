.class public Lm1/i;
.super Lz0/e;
.source "com.google.android.gms:play-services-location@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz0/e<",
        "Lz0/a$d$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lm1/c;->a:Lz0/a;

    sget-object v1, Lz0/a$d;->a:Lz0/a$d$c;

    sget-object v2, Lz0/e$a;->c:Lz0/e$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lz0/e;-><init>(Landroid/content/Context;Lz0/a;Lz0/a$d;Lz0/e$a;)V

    return-void
.end method


# virtual methods
.method public k(Lm1/d;)Lp1/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/d;",
            ")",
            "Lp1/e<",
            "Lm1/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->a()Lcom/google/android/gms/common/api/internal/c$a;

    move-result-object v0

    new-instance v1, Lm1/y;

    invoke-direct {v1, p1}, Lm1/y;-><init>(Lm1/d;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/c$a;->b(La1/k;)Lcom/google/android/gms/common/api/internal/c$a;

    move-result-object p1

    const/16 v0, 0x97a

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/c$a;->e(I)Lcom/google/android/gms/common/api/internal/c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/c$a;->a()Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lz0/e;->d(Lcom/google/android/gms/common/api/internal/c;)Lp1/e;

    move-result-object p0

    return-object p0
.end method
