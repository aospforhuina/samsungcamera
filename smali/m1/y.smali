.class public final synthetic Lm1/y;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements La1/k;


# instance fields
.field public final synthetic a:Lm1/d;


# direct methods
.method public synthetic constructor <init>(Lm1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/y;->a:Lm1/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lm1/y;->a:Lm1/d;

    check-cast p1, Lk1/r;

    check-cast p2, Lp1/f;

    new-instance v0, Lm1/z;

    invoke-direct {v0, p2}, Lm1/z;-><init>(Lp1/f;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lk1/r;->l0(Lm1/d;La1/c;Ljava/lang/String;)V

    return-void
.end method
