.class public final Lb1/y0;
.super Lb1/n0;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# instance fields
.field final synthetic g:Lb1/c;


# direct methods
.method public constructor <init>(Lb1/c;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lb1/y0;->g:Lb1/c;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lb1/n0;-><init>(Lb1/c;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final f(Ly0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/y0;->g:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb1/y0;->g:Lb1/c;

    invoke-static {v0}, Lb1/c;->f0(Lb1/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb1/y0;->g:Lb1/c;

    const/16 p1, 0x10

    .line 2
    invoke-static {p0, p1}, Lb1/c;->b0(Lb1/c;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lb1/y0;->g:Lb1/c;

    iget-object v0, v0, Lb1/c;->p:Lb1/c$c;

    .line 3
    invoke-interface {v0, p1}, Lb1/c$c;->c(Ly0/a;)V

    iget-object p0, p0, Lb1/y0;->g:Lb1/c;

    .line 4
    invoke-virtual {p0, p1}, Lb1/c;->K(Ly0/a;)V

    return-void
.end method

.method protected final g()Z
    .locals 1

    iget-object p0, p0, Lb1/y0;->g:Lb1/c;

    iget-object p0, p0, Lb1/c;->p:Lb1/c$c;

    sget-object v0, Ly0/a;->f:Ly0/a;

    invoke-interface {p0, v0}, Lb1/c$c;->c(Ly0/a;)V

    const/4 p0, 0x1

    return p0
.end method
