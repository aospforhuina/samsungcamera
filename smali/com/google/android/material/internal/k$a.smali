.class Lcom/google/android/material/internal/k$a;
.super Lf2/f;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/k$a;->a:Lcom/google/android/material/internal/k;

    invoke-direct {p0}, Lf2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/k$a;->a:Lcom/google/android/material/internal/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/internal/k;->a(Lcom/google/android/material/internal/k;Z)Z

    .line 2
    iget-object p0, p0, Lcom/google/android/material/internal/k$a;->a:Lcom/google/android/material/internal/k;

    invoke-static {p0}, Lcom/google/android/material/internal/k;->b(Lcom/google/android/material/internal/k;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/k$b;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/google/android/material/internal/k$b;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/k$a;->a:Lcom/google/android/material/internal/k;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/internal/k;->a(Lcom/google/android/material/internal/k;Z)Z

    .line 2
    iget-object p0, p0, Lcom/google/android/material/internal/k$a;->a:Lcom/google/android/material/internal/k;

    invoke-static {p0}, Lcom/google/android/material/internal/k;->b(Lcom/google/android/material/internal/k;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/k$b;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/google/android/material/internal/k$b;->a()V

    :cond_1
    return-void
.end method
