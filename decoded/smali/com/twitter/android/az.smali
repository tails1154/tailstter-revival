.class final Lcom/twitter/android/az;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private final a:Lcom/twitter/android/bs;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/twitter/android/bs;J)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/bs;

    iput-wide p2, p0, Lcom/twitter/android/az;->b:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/bs;

    iget-wide v1, p0, Lcom/twitter/android/az;->b:J

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/bs;->b(J)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
