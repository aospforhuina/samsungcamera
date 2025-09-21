.class public final Ly/k;
.super Ljava/lang/Object;
.source "InputStreamRewinder.java"

# interfaces
.implements Ly/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh0/x;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lb0/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lh0/x;

    invoke-direct {v0, p1, p2}, Lh0/x;-><init>(Ljava/io/InputStream;Lb0/b;)V

    iput-object v0, p0, Ly/k;->a:Lh0/x;

    const/high16 p0, 0x500000

    .line 3
    invoke-virtual {v0, p0}, Lh0/x;->mark(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly/k;->d()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Ly/k;->a:Lh0/x;

    invoke-virtual {p0}, Lh0/x;->d()V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Ly/k;->a:Lh0/x;

    invoke-virtual {p0}, Lh0/x;->b()V

    return-void
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Ly/k;->a:Lh0/x;

    invoke-virtual {v0}, Lh0/x;->reset()V

    .line 2
    iget-object p0, p0, Ly/k;->a:Lh0/x;

    return-object p0
.end method
