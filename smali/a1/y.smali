.class final La1/y;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo1/l;

.field final synthetic b:La1/a0;


# direct methods
.method constructor <init>(La1/a0;Lo1/l;)V
    .locals 0

    iput-object p1, p0, La1/y;->b:La1/a0;

    iput-object p2, p0, La1/y;->a:Lo1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, La1/y;->b:La1/a0;

    iget-object p0, p0, La1/y;->a:Lo1/l;

    invoke-static {v0, p0}, La1/a0;->O0(La1/a0;Lo1/l;)V

    return-void
.end method
