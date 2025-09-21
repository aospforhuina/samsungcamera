.class final La1/x;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:La1/a0;


# direct methods
.method constructor <init>(La1/a0;)V
    .locals 0

    iput-object p1, p0, La1/x;->a:La1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, La1/x;->a:La1/a0;

    invoke-static {p0}, La1/a0;->N0(La1/a0;)La1/z;

    move-result-object p0

    new-instance v0, Ly0/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0/a;-><init>(I)V

    invoke-interface {p0, v0}, La1/z;->b(Ly0/a;)V

    return-void
.end method
