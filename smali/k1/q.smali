.class final Lk1/q;
.super Lk1/g;
.source "com.google.android.gms:play-services-location@@20.0.0"


# instance fields
.field private final a:La1/c;


# direct methods
.method public constructor <init>(La1/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk1/g;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "listener can\'t be null."

    .line 2
    invoke-static {v0, v1}, Lb1/p;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lk1/q;->a:La1/c;

    return-void
.end method


# virtual methods
.method public final l0(Lm1/f;)V
    .locals 0

    iget-object p0, p0, Lk1/q;->a:La1/c;

    invoke-interface {p0, p1}, La1/c;->a(Ljava/lang/Object;)V

    return-void
.end method
