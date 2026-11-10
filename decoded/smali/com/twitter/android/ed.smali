.class final Lcom/twitter/android/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/ListTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ListTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ed;->a:Lcom/twitter/android/ListTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ed;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/ed;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v1, v1, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/i;->i(J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/ed;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->finish()V

    return-void
.end method
