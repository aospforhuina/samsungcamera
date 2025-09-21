.class public Lb1/c$d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Lb1/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lb1/c;


# direct methods
.method public constructor <init>(Lb1/c;)V
    .locals 0

    iput-object p1, p0, Lb1/c$d;->a:Lb1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ly0/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ly0/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb1/c$d;->a:Lb1/c;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0}, Lb1/c;->B()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb1/c;->c(Lb1/j;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb1/c$d;->a:Lb1/c;

    .line 3
    invoke-static {v0}, Lb1/c;->T(Lb1/c;)Lb1/c$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lb1/c$d;->a:Lb1/c;

    .line 4
    invoke-static {p0}, Lb1/c;->T(Lb1/c;)Lb1/c$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lb1/c$b;->a(Ly0/a;)V

    :cond_1
    return-void
.end method
