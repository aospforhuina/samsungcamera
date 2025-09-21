.class public final synthetic Ld1/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements La1/k;


# instance fields
.field public final synthetic a:Lb1/s;


# direct methods
.method public synthetic constructor <init>(Lb1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/b;->a:Lb1/s;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Ld1/b;->a:Lb1/s;

    check-cast p1, Ld1/e;

    check-cast p2, Lp1/f;

    sget v0, Ld1/d;->n:I

    .line 1
    invoke-virtual {p1}, Lb1/c;->C()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ld1/a;

    invoke-virtual {p1, p0}, Ld1/a;->N0(Lb1/s;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p0}, Lp1/f;->c(Ljava/lang/Object;)V

    return-void
.end method
