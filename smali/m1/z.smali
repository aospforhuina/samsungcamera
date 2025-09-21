.class final Lm1/z;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements La1/c;


# instance fields
.field private final a:Lp1/f;


# direct methods
.method public constructor <init>(Lp1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/z;->a:Lp1/f;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm1/f;

    .line 2
    invoke-virtual {p1}, Lm1/f;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lm1/z;->a:Lp1/f;

    .line 4
    new-instance v0, Lm1/e;

    invoke-direct {v0, p1}, Lm1/e;-><init>(Lm1/f;)V

    invoke-virtual {p0, v0}, Lp1/f;->c(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lm1/z;->a:Lp1/f;

    .line 6
    new-instance p1, Lz0/i;

    invoke-direct {p1, v0}, Lz0/i;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p1}, Lp1/f;->b(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p0, p0, Lm1/z;->a:Lp1/f;

    .line 7
    new-instance p1, Lz0/b;

    invoke-direct {p1, v0}, Lz0/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p1}, Lp1/f;->b(Ljava/lang/Exception;)V

    return-void
.end method
